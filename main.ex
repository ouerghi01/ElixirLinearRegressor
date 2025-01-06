defmodule MainApp do

  @x_or_data [
    {0, 0, 0},
    {0, 1, 1},
    {1, 0, 1},
    {1, 1, 0}
  ]
  def calcul_pred(x1,x2,w1,w2,b1) do
    y_pred=x1*w1+b1+x2*w2 + b1
    y_pred
  end
  def calculDiff(y_real,y_pred) do
    y_real-y_pred
  end
  def relu(x) do
    cond do
      x > 0 -> x
      true -> 0

    end
  end
  def sigmoid(x) do
    neg_x = -x
    1/(1+ :math.exp(neg_x))
  end
  def calculate_cost(w1,w2,w3,w4,w5,w6,b1) do
    Enum.reduce(@x_or_data,0,fn row ,acc->
      {x1,x2,y} = row
      x_pred_1= sigmoid(calcul_pred(x1,x2,w1,w2,b1))
      x_pred_2=sigmoid(calcul_pred(x1,x2,w3,w4,b1))
      y_pred=sigmoid(calcul_pred(x_pred_1,x_pred_2,w5,w6,b1))
      error_diff= calculDiff(y,y_pred)**2
      acc+error_diff
    end)/length(@x_or_data)
  end
  def main() do
    nb_iterations = 10000
    w1 = :rand.uniform()
    w2 = :rand.uniform()
    w3 = :rand.uniform()
    w4 = :rand.uniform()
    w5 = :rand.uniform()
    w6 = :rand.uniform()
    b1 = 1
    eps = 0.001
    rate=0.01
    {wx1_new, wx2_new,wx3_new, wx4_new,wx5_new, wx6_new, bx1_new,cost}=Enum.reduce(0..nb_iterations,{w1,w2,w3,w4,w5,w6,b1,0},fn i,{wx1,wx2,wx3, wx4, wx5, wx6,bx1,c} ->
      cost=calculate_cost(wx1,wx2,wx3,wx4,wx5,wx6,bx1)
      dwx1 = (calculate_cost(wx1 + eps, wx2, wx3, wx4, wx5, wx6, bx1) - cost) / eps
      dwx2 = (calculate_cost(wx1, wx2 + eps, wx3, wx4, wx5, wx6, bx1) - cost) / eps
      dwx3 = (calculate_cost(wx1, wx2, wx3 + eps, wx4, wx5, wx6, bx1) - cost) / eps
      dwx4 = (calculate_cost(wx1, wx2, wx3, wx4 + eps, wx5, wx6, bx1) - cost) / eps
      dwx5 = (calculate_cost(wx1, wx2, wx3, wx4, wx5 + eps, wx6, bx1) - cost) / eps
      dwx6 = (calculate_cost(wx1, wx2, wx3, wx4, wx5, wx6 + eps, bx1) - cost) / eps
      dbx1 = (calculate_cost(wx1, wx2, wx3, wx4, wx5, wx6, bx1 + eps) - cost) / eps
      wx1_new = wx1 - rate * dwx1
      wx2_new = wx2 - rate * dwx2
      wx3_new = wx3 - rate * dwx3
      wx4_new = wx4 - rate * dwx4
      wx5_new = wx5 - rate * dwx5
      wx6_new = wx6 - rate * dwx6
      bx1_new = bx1 - rate * dbx1
      IO.puts("Iteration: #{i} w1: #{wx1_new} w2: #{wx2_new} w3: #{wx3_new} w4: #{wx4_new} w5: #{wx5_new} w6: #{wx6_new} b1: #{bx1_new} Cost: #{cost}\n")
      {wx1_new, wx2_new, wx3_new, wx4_new, wx5_new, wx6_new, bx1_new, cost}


    end)
    IO.puts("w1: #{wx1_new} w2: #{wx2_new} b1: #{bx1_new} Cost: #{cost}\n")


    for j <- 0..1 do
      for i <- 0..1 do
      resulta = sigmoid(calcul_pred(j, i, wx1_new, wx2_new, bx1_new))
      resultb = sigmoid(calcul_pred(j, i, wx3_new, wx4_new, bx1_new))
      result_final = sigmoid(calcul_pred(resulta, resultb, wx5_new, wx6_new, bx1_new))

      IO.puts("x1: #{j} x2: #{i} y_pred: #{result_final}")
      end
    end






  end

end
MainApp.main()
