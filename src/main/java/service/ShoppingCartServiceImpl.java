package service;

import entity.Product;
import entity.CartItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.util.CookieGenerator;
import repository.CartItemRepository;

import java.util.*;

@Service(value = "shoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService{

}
