package lt.code.academy.airsoft_shop.controllers;

import lombok.RequiredArgsConstructor;
import lt.code.academy.airsoft_shop.models.Product;
import lt.code.academy.airsoft_shop.services.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequiredArgsConstructor
//lombukas suinjectins
public class ProductController {
    private final ProductService productService;


    @GetMapping("/")
    public String products(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("products", productService.listProducts(title));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
//        Product product = productService.getProductById(id);
//        model.addAttribute("product", product);
//        model.addAttribute("images", product.getImages());

        model.addAttribute("product", productService.getProductById(id));
        return "product-info";
    }

    //    @PostMapping("/product/create")
//    public String createProduct(@RequestParam("file1") MultipartFile file1,
//                                @RequestParam("file2") MultipartFile file2,
//                                @RequestParam("file3") MultipartFile file3,
//                                Product product) throws IOException, IndexOutOfBoundsException {
//        productService.saveProduct(product, file1, file2, file3);
//        return "redirect:/";
//    }
    @PostMapping("/product/create")
    public String createProduct(Product product) {
        productService.saveProduct(product);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }

}
