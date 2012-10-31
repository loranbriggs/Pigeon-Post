require 'spec_helper'

describe "Static pages" do

    subject { page }

    describe "Home page" do
        before { visit root_path }

        it { should have_selector('h1', :text => 'Pigeon Post') }
        it { should have_selector('title', :text => "Home") }
    end

    describe "About page" do
        before { visit about_path }

        it { should have_selector('h1', :text => 'About Me') }
        it { should have_selector('title', :text => "About") }
    end

    describe "Contact page" do
        before { visit contact_path }

        it { should have_selector('h1', :text => 'Contact Me') }
        it { should have_selector('title', :text => "Contact") }
    end

end