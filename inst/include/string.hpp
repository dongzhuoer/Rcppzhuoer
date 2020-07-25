#pragma once

namespace Rcppzhuoer {
    // paste arguments into a string via `<<`
    template<typename... Args>
    std::string paste(Args... args);

        // workhorse
            // base form
    template<typename T>
    void paste_impl(std::ostream& out, T value) 
    {
        out << value;
    }
            // recursive form
    template<typename T, typename... Args>
    void paste_impl(std::ostream& out, T value, Args... args) 
    {
        out << value;
        paste_impl(out, args...);
    }

        // use `<<` of ostringstream to concatenate arguments
    template<typename... Args>
    std::string paste(Args... args) 
    {
        std::ostringstream out {};
        out << std::boolalpha;
        
        paste_impl(out, args...);
        return out.str();
    }
}

