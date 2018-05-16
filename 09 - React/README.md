## What is React?

> ⚠️ If you want to know more about developing front end applications make sure to visit [www.fullstackreact.com](https://www.fullstackreact.com/30-days-of-react/day-1/) 

React is a JavaScript library for building user interfaces. It is the view layer for web applications.

At the heart, all React applications are components. A component is a self-contained module that renders some output. We can write interface elements like a button or an input field as a React component. Conceptually, components are JavaScript functions, they accept inputs called `“props”` and return React elements describing what should appear on the screen.

Components are composable. A component might include one or more other components in its output.

Broadly speaking, to write React apps we write React components that correspond to various interface elements. We then organize these components inside higher-level components which define the structure of our application.

<img width="1024" alt="screen shot 2018-05-04 at 10 22 32 am" src="https://user-images.githubusercontent.com/7410981/39648426-0547970a-4f97-11e8-819a-e4b23e470411.png">

For example, let's take our own Twitter clone app and look at the timeline. The timeline will consist of many interface elements, like input fields, labels, or buttons. Each element inside the timeline can be written as a React component. We will then write a higher-level component, the timeline component itself. The form component would specify the structure of the timeline and include each of these interface elements inside of it.

>💡 Components let you split the UI into independent, reusable pieces, and think about each piece in isolation.

## How does it work?
Unlike we already saw in [08 - Javascript and the DOM & Bootstrap](https://github.com/Nearsoft/apprentice/tree/master/08%20-%20Javascript%20and%20the%20DOM%20%26%20Bootstrap), React does not operates directly on the browser's Document Object Model (DOM) immediately, but on a virtual DOM.

That is, rather than manipulating the document in a browser after changes to our data (which can be quite slow) it resolves changes on a DOM built and run entirely in memory. After the virtual DOM has been updated, React intelligently determines what changes to make to the actual browser's DOM.

The React Virtual DOM exists entirely in-memory and is a representation of the web browser's DOM. Because of this, we when we write a React component, we're not writing directly to the DOM, but we're writing a virtual component that React will turn into the DOM.


## What is JSX

Consider this variable declaration:

```javascript
const element = <h1>Hello, world!</h1>;
```

This funny tag syntax is neither a string nor HTML.

It is called JSX or **J**ava**S**cript e**X**tension, is a React extension that allows us to write JavaScript that looks like HTML:

```javascript
  render() {
    return (
      <h1 className='large'>Hello World</h1>
    );
}
```

The `render()`` function looks like it's returning HTML, but this is actually JSX. The JSX is translated to regular JavaScript at runtime. That component, after translation, looks like this:

```javascript
  render() {
    return (
      React.createElement(
        'h1',
        {className: 'large'},
        'Hello World'
      )
    );
}
```

While JSX looks like HTML, it is actually just a nicer way to write a React.createElement() declaration. When a component renders, it outputs a tree of React elements or a virtual representation of the HTML elements this component outputs. React will then determine what changes to make to the actual DOM based on this React element representation. In the case above the HTML that React writes to the DOM will look like this:

```html
<h1 class='large'>Hello World</h1>
```
Because JSX is JavaScript, we can't use JavaScript reserved words. This includes words like class and for.
That's we we are using `className` instead of the HTML attribute `class`

## Creating our first component

We mentioned that the heart of all React applications are components. The best way to understand React components is to write them.

We'll begin with our Twitter clone navbar component, first create a file named `Navbar.js` and import React:

```javascript
import React from 'react';
```

Convert the HTML source code from
[05 - HTML](https://github.com/Nearsoft/apprentice/tree/master/05%20-%20HTML) lesson into JSX, this [link](https://magic.reactjs.net/htmltojsx.htm) may come handy, it should look like something like this:

```javascript
class Navbar extends React.Component {
  render() {
    return (
      <div className="nav">
        <div className="wrapper">
          <div className="nav-logo">
            <span>Twitter Clone</span>
          </div>
          <div className="nav-navbar">
            <ul className="nav-list">
              <li>Users</li>
              <li>Profile</li>
              <li>All tweets</li>
              <li>Settings</li>
              <li>Sign out</li>
            </ul>
          </div>
        </div>
      </div>
    );
  }
}


export default Navbar

```

Simple! Now we have an independent component that we can use. Before using it remember to import it!

```javascript
import Navbar from './Navbar';
```

and put it inside the `App` component's `render()` method:

```javascript
class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="container">
          <Navbar/>
        </div>
      </div>
    );
  }
}
```

You should be seeing something like this in your browser, magic! ✨:


<img width="1131" alt="screen shot 2018-05-04 at 2 14 18 pm" src="https://user-images.githubusercontent.com/7410981/39653329-794f8b54-4fa5-11e8-88ca-3a67232b5300.png">

> Tip💡: You can use [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en) plugin for chrome to debug react applications 🙌🏼

## Props

React allows us to send data to a component in the same syntax as HTML, using attributes or properties on a component. This like passing the src attribute to an image tag.

```html
<img src="happy_dog.jpg"/>
```
We can think about the property of the <img /> tag as a prop we're setting on a component called img. We can access these properties inside a component as `this.props`. Let's see props in action:

Let's take our freshly created `<Navbar/>` component and instead of hardcoding menus in our navbar, we will pass in all the menu items as an array to the `<Navbar/>` component as a `items` props:

```javascript
  <Navbar
   items={['Users', 'Profiles', 'All Tweets', 'Settings', 'Sign Out']}
  />
```

Inside of our component, we can access this items prop from the `this.props` property in the Navbar class. Instead of setting the links statically in the template, we can replace it with the property passed in.

```javascript
class Navbar extends React.Component {
  render() {
    return (
      <div className="nav">
        <div className="wrapper">
          <div className="nav-logo">
            <span>Twitter Clone</span>
          </div>
          <div className="nav-navbar">
            <ul className="nav-list">
              { this.props.links.map(link => (<li> {link} </li>))}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default Navbar
```

Now our `<Navbar />` component will display the array we pass in as menu items when we call the component. For instance, calling our `<Navbar />` component four times like this:

```javascript
<Navbar links={['Users', 'Profiles', 'All Tweets', 'Settings', 'Sign Out']}/>
<Navbar links={['Sign Out']} />
<Navbar links={['Click me', 'Do not click me']} />
<Navbar links={['Hack me']} />
```

Results in four <Navbar /> components to mount like so:

<img width="1129" alt="screen shot 2018-05-04 at 12 12 57 pm" src="https://user-images.githubusercontent.com/7410981/39650960-ef96d2ec-4f9e-11e8-9ea8-f51e11453150.png">

Nifty right? Now we can reuse the <Navbar /> component with a dynamic items property.

> 💡 We can pass in numbers, strings, all sorts of objects, and even functions as props!

## State

If the heart of React is a component, the heart of every React component is its “state”, an object that determines how that component renders & behaves. In other words, “state” is what allows you to create components that are dynamic and interactive.

`state` in a component is intended to be completely internal to the Component and it's children. Similar to how we access props in a component, the state can be accessed via `this.state` in a component. Whenever the state changes (via the `this.setState()` function), the component will rerender.

Let's build a simple button that retains how many times have been clicked to try this out:

First we create the `<SelfAwareButton/>` component:

```javascript
import React from 'react';

class SelfAwareButton extends React.Component {
  render() {
    return (
      <button
        className="btn btn-primary btn-lg">
        <span> I have been clicked # times </span>
      </button>
    );
  }
}
```

Then in order to keep track of how many times a button has been clicked we need to define an initial state like this:

```javascript
constructor() {
  super();
  this.state = {
    clicked: 0
  }
}
```

Neat! Now Every time the button is clicked we need to increment the `clicked` variable in state by one by adding the `onClick` prop:

```javascript
onClick={() => { this.setState({clicked: clicked + 1})}}
```

> The `=>` is known as an `arrow function`, which works exactly the same as regular function  but with a shorter syntax, if you want to know more click [here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

Great now the `clicked` counter will increment every time the button is clicked, to display it replace the `#` in the `span` tag with the `clicked` variable in state.

The final version of the `<SelfAwareButton/>` should look like this:

```javascript
import React from 'react';

class SelfAwareButton extends React.Component {

  constructor() {
    super();
    this.state = {
      clicked: 0
    }
  }

  render() {
    const { clicked } = this.state;

    return (
      <button
        onClick={() => { this.setState({clicked: clicked + 1})}}
        className="btn btn-primary btn-lg">
        <span> I have been clicked {clicked} times </span>
      </button>
    );
  }
}


export default SelfAwareButton
```

And if you render the `<SelfAwareButton/>` component it should look like this in your browser:

[![https://gyazo.com/c6dba4800a718261a3b599d2622df81e](https://i.gyazo.com/c6dba4800a718261a3b599d2622df81e.gif)](https://gyazo.com/c6dba4800a718261a3b599d2622df81e)

### Props vs State
State is referred to the local state of the component which cannot be accessed and modified outside of the component and only can be used & modified inside the component. Props, on the other hand, make components reusable by giving components the ability to receive data from the parent component in the form of props.

## Component Lifecycle

A React component, like anything else in the world, goes through the following phases:

#### Initialization
In this phase the React component prepares for its upcoming journey, by setting up the initial states and default props.

#### Mounting
After preparing with basic needs, state and props, the React Component is ready to mount in the browser DOM. This phase gives hook methods for before and after mounting of components.

#### Updation
This phase starts when the react component has taken birth on the browser and grows by receiving new updates. The component can be updated by two ways, sending new props or updating the state.

#### Unmounting
In this phase, the component is not needed and the component will get unmounted from the DOM.

The following image is the visual representation of the phases and the methods of ReactJs lifecycle:

![1_sn-ftowp0_vvrbeuafecma](https://user-images.githubusercontent.com/7410981/39642189-b2f41fca-4f85-11e8-8e96-2b4828978504.png)

> ⚠️ Some of React's lifecycle methods became deprecated with React 16.x release legacy lifecycles will continue to work until version 17.

The methods which gets called in these phase are:

* **componentWillMount (deprecated)** is executed just before the React Component is about to mount on the DOM. Hence, after this method the component will mount. All the things that you want to do before a component mounts has to be defined here.
This method is executed **once** in a lifecycle of a component and before first render.

  * **Usage:** componentWillMount is used for initializing the states or props, there is a huge debate going on to merge it with the constructor.


* **componentDidMount** this is the hook method which is executed after the component did mount on the DOM. This method is executed **once** in a lifecycle of a component and after the first render.

  * **Usage:** As, in this method, we can access the DOM, we should initialize JS libraries, API calls should be made in componentDidMount method always.


* **componentWillReceiveProps (deprecated)** gets executed when the props have changed and is not first render. Sometimes state depends on the props, hence whenever props changes the state should also be synced. This is the method where it should be done.
The similar method for the state doesn’t exist before state change because the props are read only within a component and can never be dependent on the state.

  * **Usage:** This is how the state can be kept synced with the new props.


* **shouldComponentUpdate** tells React that when the component receives new props or state is being updated, should React re-render or it can skip rendering?
This method is a question, should the Component be Updated?
Hence this method should return true or false, and accordingly the component would be re-rendered or skipped. By default, this method return true.

  * **Usage:** The example is one of the cases where I would like to re-render the component only when the props status changes.
  This method is generally used when rendering is a very heavy method, then you should avoid render every now and then.


* **componentWillUpdate (deprecated)** is executed only after the shouldComponentUpdate returns true. This method is only used to do the preparation for the upcoming render, similar to componentWillMount. There can be some use case when there needs some calculation or preparation before rendering some item, this is the place to do so.

* **componentDidUpdate** is executed when the new updated component has been updated in the DOM. This method is used to re trigger the third party libraries used to make sure these libraries also update and reload themselves.

* **componentWillUnmount** This method is the last method in the lifecycle. This is executed just before the component gets removed from the DOM.

  * **Usage**: In this method, we do all the cleanups related to the component.
  For example, on logout, the user details and all the auth tokens can be cleared before unmounting the main component.

> ⚠️  To know more please visit Mahesh Halder's [article](https://hackernoon.com/reactjs-component-lifecycle-methods-a-deep-dive-38275d9d13c0) since I took everything from there 😛


## Getting dirty

Now that you know React let's build the rest of our Twitter clone components 🤘🏾🐸🤘🏾.

