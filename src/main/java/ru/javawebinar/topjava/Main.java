package ru.javawebinar.topjava;

import ru.javawebinar.topjava.util.MealsUtil;

/**
 * @see <a href="http://topjava.herokuapp.com">Demo</a>
 * @see <a href="https://github.com/JavaOPs/topjava">Initial project</a>
 */
public class Main {
    public static void main(String[] args) {

        System.out.format("Hello Topjava Enterprise!");
        System.out.println(MealsUtil.getWithExcess(MealsUtil.MEALS, MealsUtil.DEFAULT_CALORIES_PER_DAY)
        );
    }
}
