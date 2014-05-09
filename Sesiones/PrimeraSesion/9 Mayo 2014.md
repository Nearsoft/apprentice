#Primera Sesion

## Como funciona el unit testing?

Las pruebas unitarias es un pedazo de codigo que invoca una unidad de trabajo y cecha si el resultado final es el mismo que el esperado. Si el resultado final es diferente del esperado tenemos una prueba fallida. No importa el lenguaje en el que estemos, es dificil definir un "buen" unit test o prueba unitaria.

Mucha gente le da una probada a unit testing pero lo dejan diciendo que es muy dificil o que no agrega valor a su proyecto. Lo que empiezan a hacer es que contratan a testers manuales o la ultima tendencia contratan a testers que hagan pruebas automatizadas del sistema.

No tiene caso escribir un mal unit test, si vas a escribir un unit test solo por escribirlo seria mejor que no lo hicieras.

## Que es lo que hace un buen unit test?

* Debe de ser automatizado y repetible
* Debe de ser facil de implementar
* Debe de ser relevante el dia de mañana
* Cualquiera puede ejecutarlo con solo aplastar un boton
* Debe de correr rapido
* Debe de regresar resultados consistentes
* Debe de estar isolado, es decir puede correr independientemente de otros tests.
* Cuando falla, debe de ser facil identificar que fallo


## Test Driven Development o TDD
Esto significa escribir tus tests antes de escribir tu codigo de produccion.

Manera tradicional de escribir unit tests:

![](https://raw.githubusercontent.com/Nearsoft/apprentice/master/Sesiones/PrimeraSesion/manera_tradicional_de_escribir_unit_tests.PNG)

Usando TDD:

![](https://raw.githubusercontent.com/Nearsoft/apprentice/master/Sesiones/PrimeraSesion/usando_tdd.PNG)

## Aplicacion de ejemplo (basada en el libro de Head First - Object Oriented Design)

La aplicacion es basicamente un inventario para una tienda de guitarras. El dueño usaba todo en papel pero ahora quiere moverlo a un sistema personalizado.

Las tareas que quiere en su inventario son: Agregar nuevas guitarras y buscar guitarras por las diferentes caracteristicas de la guitarra.

Nuestro diagrama de clases se ve algo asi:

![](https://raw.githubusercontent.com/Nearsoft/apprentice/master/Sesiones/PrimeraSesion/diagrama_clases.PNG)

Vamos a usar TDD para crear estas clases.

Nos vamos a BlueJ, y le Project -> New Project -> Seleccionamos la carpeta deseada.

Antes de empezar vamos a activar los testing tools. Nos vamos a Tools -> Preferences -> Interface -> Checamos 'Show unit testing tools' -> Damos Ok

Lo primero que vamos a hacer es nuestra clase de pruebas. Le damos en el menu izquierdo 'New Class' -> Como nombre ponemos 'InventoryTests' -> Seleccionamos 'Unit Test' -> Ok.

Una vez hecho esto damos doble click en el recuadro de InventoryTests que ha aparecido en nuestro workspace. Aqui veremos un template de una clase de pruebas que nosotros iremos modificando.

Por el momento vamos a borrar los metodos que tienen el atributo __@Before__ y __@After__ ya que no los ocupamos. Y vamos a agregar un nuevo metodo que probara que podemos agregar guitarras al inventario.

La clase quedaria asi:

	import static org.junit.Assert.*;
	import org.junit.After;
	import org.junit.Before;
	import org.junit.Test;
	
	public class InventoryTests
	{
	    /**
	     * Default constructor for test class InventoryTests
	     */
	    public InventoryTests()
	    {
	    }
	    
	    @Test
	    public void ItShouldAddGuitarToInventory() {
	        Inventory inventory = new Inventory();
	        Guitar guitar = new Guitar("V95693",
	            1499.95, "Fender", "Stratocastor",
	            "electric", "Alder", "Alder");
	        inventory.addGuitar(guitar);
	        
	        //AssertEquals(expected, actual)
	        assertEquals(1, inventory.getLength());
	    }
	}

Ahora damos click en 'Compile' en el menu superior y nos mostrara un error en la parte de abajo donde nos dice: _cannot find symbol - class Inventory_. Esto es nuestro primer paso en TDD, en un ciclo que se llama Red-Green-Refactor, que dice que primero hacemos todo fallar, luego lo arreglamos y luego lo refactorizamos. Ahora el siguiente paso es hacer pasar esta prueba. Tomaremos los menores pasos posibles para hacer pasar esta prueba.


El primer paso es agregar una clase nueva a nuestro proyecto que se llame Inventory. Nos regresamos a la ventana principal de BlueJ y le damos 'New Class...' -> Como nombre le damos 'Inventory' -> Class -> Ok.

En el mismo menu principal de BlueJ le damos en 'Compile' y veremos que la clase __InventoryTests__ ya ha dejado de quejarse por Inventory pero ahora se queja de que Guitar no existe. La agregamos. 'New Class...' -> Como nombre 'Guitar' -> Tipo 'Class' -> Ok. Le damos click en Compile y ahora nos dice: _'constructor Guitar in class Guitar cannot be applied to given types;'_.

Una de mis cosas preferidas de TDD es que aprendes a reconocer errores tipicos del lenguaje en el que estas programando. El compilador nos dice que no conoce constructor como el que estamos invocando, entonces lo agregamos.

Damos doble click en el icono que se llama 'Guitar' y borramos el boilerplate que tenemos, agregamos los parametros al constructor y quedaria algo asi:

	public class Guitar {
	    private String serialNumber, builder, model, type, 
	                    backWood, topWood;
	    private double price;
	    
	    public Guitar(String serialNumber, double price,
	                    String builder, String model, String type,
	                    String backWood, String topWood) {
	        this.serialNumber = serialNumber;
	        this.price = price;
	        this.builder = builder;
	        this.model = model;
	        this.type = type;
	        this.backWood = backWood;
	        this.topWood = topWood;
	    }
	}

Una vez mas nos regresamos a la pantalla principal de BlueJ y le damos en compilar. Nos daremos cuenta que ahora se queja que inventario no tiene un metodo que se llame _addGuitar(Guitar)_. Lo agregamos.

Damos doble click en el icono de inventario. Ahora como dijimos al principio haremos lo menos posible para que esta prueba pase, como veremos a continuacion.

	public class Inventory {
	    public Inventory()
	    {
	    }
	
	    public void addGuitar(Guitar newGuitar) {
	        //Do nothing for now
	    }
	}

Pero de que nos sirve esto? Por ahora lo que nos interesa es saber si la prueba pasara, realmente no nos importa la implementacion en este momento. Damos nuevamente _Compile_ en la pantalla principal de BlueJ y ahora nos dice: _cannot find symbol - method getLength()_

Una vez mas lo agregamos y haremos todavia algo mas descabellado como se vera a continuacion:

	public class Inventory {
	    public Inventory()
	    {
	    }
	
	    public void addGuitar(Guitar newGuitar) {
	        //Do nothing for now
	    }
	    
	    public int getLength() {
	        return 1;
	    }
	}

Ya puedes rasgar tus vestiduras. Recuerdas el flujo de Red-Green-Refactor, bueno de esto se trata la menor cantidad de pasos para hacer pasar una prueba. Para probar que esto si funciona, nos regresamos a la pantalla principal de BlueJ y damos click derecho en nuestro icono de InventoryTests:

![](https://raw.githubusercontent.com/Nearsoft/apprentice/master/Sesiones/PrimeraSesion/pantalla_principal_bluej.png)

Le damos en _Test All_ y debe salir un pop-up nuevo donde todo se vea verde como lo siguiente:

![](https://raw.githubusercontent.com/Nearsoft/apprentice/master/Sesiones/PrimeraSesion/success.png)

Ahora vamos a la etapa de Refactoring, en esta etapa por lo general vamos removiendo codigo duplicado en las clases afectadas por las pruebas o codigo inservible. En nuestro caso vamos a dar una real implementacion a _getLength()_

Usaremos el libro como referencia para la clase de Inventory:

	import java.util.*;
	
	public class Inventory {
	    private List guitars;
	    
	    public Inventory() {
	        guitars = new LinkedList();
	    }
	
	    //Signature differs from book,
	    //Let's stick with this one.
	    public void addGuitar(Guitar newGuitar) {
	        guitars.add(newGuitar);
	    }
	    
	    public int getLength() {
	        return guitars.size();
	    }
	}

> Es importante que agregues __import java.util.*;__ al inicio de tu archivo 'Inventory', si no fallara al tratar de compilar.

Compilamos en la pantalla principal y volvemos a correr las pruebas (Click derecho en el icono de tests y le damos en Test All) todo debe de estar funcionando.


## Tarea

Implementar el metodo de __search(Guitar):Guitar__ y __getGuitar(String):Guitar__

	import static org.junit.Assert.*;
	import org.junit.After;
	import org.junit.Before;
	import org.junit.Test;
	
	public class InventoryTests
	{
	    /**
	     * Default constructor for test class InventoryTests
	     */
	    public InventoryTests()
	    {
	    }
	    
	    @Test
	    public void ItShouldAddGuitarToInventory() {
	        Inventory inventory = new Inventory();
	        Guitar guitar = new Guitar("V95693",
	            1499.95, "Fender", "Stratocastor",
	            "electric", "Alder", "Alder");
	        inventory.addGuitar(guitar);
	        
	        //AssertEquals(expected, actual)
	        assertEquals(1, inventory.getLength());
	    }
	    
	    @Test
	    public void ItShouldGetAGuitar() {
	        Inventory inventory = new Inventory();
	        Guitar guitar = new Guitar("V95693",
	            1499.95, "Fender", "Stratocastor",
	            "electric", "Alder", "Alder");
	        inventory.addGuitar(guitar);
	        
	        //AssertEquals(expected, actual)
	        //Implement this
	        assertEquals(guitar, inventory.getGuitar("V95693"));
	    }
	    
	    @Test
	    public void ItShouldSearchAGuitar() {
	        Inventory inventory = new Inventory();
	        Guitar guitar = new Guitar("V95693",
	            1499.95, "Fender", "Stratocastor",
	            "electric", "Alder", "Alder");
	        inventory.addGuitar(guitar);
	        
	        //AssertEquals(expected, actual)
	        //Implement this
	        assertEquals(guitar, inventory.search(guitar));
	    }
	}




