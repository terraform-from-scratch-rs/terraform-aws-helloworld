use gloo_console as console;
use js_sys::Date;
use yew::{html, Component, Context, Html};

pub struct App {}

impl Component for App {
    type Message = ();
    type Properties = ();

    fn create(_ctx: &Context<Self>) -> Self {
        Self { }
    }

    fn view(&self, _ctx: &Context<Self>) -> Html {
        console::log!("Hello, Terraform for AWS and Rust!");
        console::log!(String::from(Date::new_0().to_string()));

        html! {
            <div>
                <h1 class="title">
                    { "Hello, Terraform for AWS and Rust!" }
                </h1>

                // Display the current date and time the page was rendered
                <p class="footer">
                    { "Rendered: " }
                    { String::from(Date::new_0().to_string()) }
                </p>
            </div>
        }
    }
}

fn main() {
    yew::start_app::<App>();
}
