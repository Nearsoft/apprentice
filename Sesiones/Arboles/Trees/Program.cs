using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trees
{
	class Program
	{
		static void Main(string[] args)
		{
			var bst = new BinarySearchTree();
			bst.Insert(23);
			bst.Insert(45);
			bst.Insert(16);
			bst.Insert(37);
			bst.Insert(3);
			bst.Insert(99);
			bst.Insert(22);
			bst.Insert(1);

			Console.WriteLine("InOrder traversal: ");
			bst.InOrder(bst.Root);

			Console.WriteLine();
			Console.WriteLine("Minimum value in tree:");
			Console.Write(bst.GetMin());

			Console.WriteLine();
			Console.WriteLine("Maximum value in tree");
			Console.WriteLine();
			Console.WriteLine(bst.GetMax());

			bst.Remove(23);
			Console.ReadKey();
		}
	}

	public class Node
	{
		public int Data { get; set; }

		public Node Left { get; set; }

		public Node Right { get; set; }

		public Node(int data, Node left, Node right)
		{
			Left = left;
			Right = right;
			Data = data;
		}

		public int Show()
		{
			return Data;
		}
	}

	public class BinarySearchTree
	{
		public Node Root { get; set; }

		public BinarySearchTree()
		{
			Root = null;
		}

		public void Insert(int data)
		{
			var newNode = new Node(data, null, null);

			if (Root == null)
			{
				Root = newNode;
			}
			else
			{
				var current = Root;
				Node parentNode;
				while (true)
				{
					parentNode = current;
					if (data < current.Data)
					{
						current = current.Left;
						if (current == null)
						{
							parentNode.Left = newNode;
							break;
						}
					}
					else
					{
						current = current.Right;
						if (current == null)
						{
							parentNode.Right = newNode;
							break;
						}
					}
				}
			}
		}

		public void InOrder(Node node)
		{
			if (node != null)
			{
				InOrder(node.Left);
				Console.Write("{0} ", node.Data);
				InOrder(node.Right);
			}
		}

		public void PostOrder(Node node)
		{
			if (node != null)
			{
				PostOrder(node.Left);
				PostOrder(node.Right);
				Console.Write("{0} ", node.Data);
			}
		}

		public void PreOrder(Node node)
		{
			if (node != null)
			{
				Console.Write("{0} ", node.Data);
				PreOrder(node.Left);
				PreOrder(node.Right);
			}
		}

		public int GetMin()
		{
			var current = Root;
			while (current.Left != null)
			{
				current = current.Left;
			}
			return current.Data;
		}

		public int GetMax()
		{
			var current = Root;
			while (current.Right != null)
			{
				current = current.Right;
			}
			return current.Data;
		}

		public void Remove(int data)
		{
			Root = RemoveNode(Root, data);
		}

		private Node RemoveNode(Node node, int data)
		{
			if (node == null)
			{
				return null;
			}

			if (data == node.Data)
			{
				if (node.Left == null && node.Right == null)
				{
					return null;
				}

				if (node.Left == null)
				{
					return node.Right;
				}

				if (node.Right == null)
				{
					return node.Left;
				}

				var tempNode = GetSmallest(node.Right);
				node.Data = tempNode.Data;
				node.Right = RemoveNode(node.Right, tempNode.Data);
				return node;
			}
			else if (data < node.Data)
			{
				node.Left = RemoveNode(node.Left, data);
				return node;
			}
			else
			{
				node.Right = RemoveNode(node.Right, data);
				return node;
			}
		}

		private Node GetSmallest(Node node)
		{
			var current = node;
			while (current.Left != null)
			{
				current = current.Left;
			}
			return current;
		}
	}
}
