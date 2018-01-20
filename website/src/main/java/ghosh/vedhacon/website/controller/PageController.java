package ghosh.vedhacon.website.controller;

import java.util.Locale.Category;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	private static final Logger logger = LoggerFactory
			.getLogger(PageController.class);

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index(
			@RequestParam(name = "logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("homePage");
		mv.addObject("title", "Home");

		logger.info("Inside PageController index method - INFO");
		logger.debug("Inside PageController index method - DEBUG");

		if (logout != null) {
			mv.addObject("message", "You have successfully logged out!");
		}

		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value = "aboutUs")
	public ModelAndView about(
			@RequestParam(name = "pg", required = false) String pg) {
		ModelAndView mv = new ModelAndView("homePage");

		if (pg != null) {
			if (pg.equals("team")) {
				mv.addObject("title", "Team");
			} else if (pg.equals("partners")) {
				mv.addObject("title", "Partners");
			}
		} else {
			mv.addObject("title", "About Us");
		}
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = "privacy")
	public ModelAndView privacy(
			@RequestParam(name = "pg", required = false) String pg) {
		ModelAndView mv = new ModelAndView("homePage");

		if (pg != null) {
			if (pg.equals("privacyLaws")) {
				mv.addObject("title", "Privacy Laws");
			} else if (pg.equals("gdpr")) {
				mv.addObject("title", "GDPR");
			} else if (pg.equals("dpfi")) {
				mv.addObject("title", "Data Protection Framework");
			}
		} else {
			mv.addObject("title", "Privacy");
		}

		mv.addObject("userClickPrivacy", true);
		return mv;
	}

	@RequestMapping(value = "privacyLaws")
	public ModelAndView privacyLaw() {
		ModelAndView mv = new ModelAndView("privacyLaw");
		return mv;
	}

	@RequestMapping(value = "gdpr")
	public ModelAndView gdpr() {
		ModelAndView mv = new ModelAndView("gdpr");
		return mv;
	}

	@RequestMapping(value = "dataProtectionIndia")
	public ModelAndView dataProtectionIndia() {
		ModelAndView mv = new ModelAndView("dataProtectionIndia");
		return mv;
	}

	@RequestMapping(value = "tciModel")
	public ModelAndView tciModel(
			@RequestParam(name = "pg", required = false) String pg) {
		ModelAndView mv = new ModelAndView("homePage");

		if (pg != null) {
			if (pg.equals("train")) {
				mv.addObject("title", "Train");
			} else if (pg.equals("consult")) {
				mv.addObject("title", "Consult");
			} else if (pg.equals("implement")) {
				mv.addObject("title", "Implement");
			}
		} else {
			mv.addObject("title", "TCI Model");
		}

		mv.addObject("userClickTCIModel", true);
		return mv;
	}

	@RequestMapping(value = "train")
	public ModelAndView train() {
		ModelAndView mv = new ModelAndView("train");
		return mv;
	}

	@RequestMapping(value = "consult")
	public ModelAndView consult() {
		ModelAndView mv = new ModelAndView("consult");
		return mv;
	}

	@RequestMapping(value = "implement")
	public ModelAndView implement() {
		ModelAndView mv = new ModelAndView("implement");
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}

	/*
	 * Methods to load all the products and based on category
	 */

	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "All Products");

		mv.addObject("userClickAllProducts", true);
		return mv;
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");

		// categoryDAO to fetch a single category
		Category category = null;

		// passing the single category object
		mv.addObject("category", category);

		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}

	/*
	 * Viewing a single product
	 */

	@RequestMapping(value = "/membership")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("page");

		logger.info("Page Controller membership called!");

		return mv;
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(
			@RequestParam(name = "error", required = false) String error,
			@RequestParam(name = "logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("title", "Login");
		if (error != null) {
			mv.addObject("message", "Username and Password is invalid!");
		}
		if (logout != null) {
			mv.addObject("logout", "You have logged out successfully!");
		}
		return mv;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request,
			HttpServletResponse response) {
		// Invalidates HTTP Session, then unbinds any objects bound to it.
		// Removes the authentication from securitycontext
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/login?logout";
	}

	@RequestMapping(value = "/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle", "Aha! Caught You.");
		mv.addObject("errorDescription",
				"You are not authorized to view this page!");
		mv.addObject("title", "403 Access Denied");
		return mv;
	}

}
