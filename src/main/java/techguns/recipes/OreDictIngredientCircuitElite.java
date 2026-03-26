package techguns.recipes;

import com.google.gson.JsonObject;
import net.minecraft.item.crafting.Ingredient;
import net.minecraftforge.common.crafting.IIngredientFactory;
import net.minecraftforge.common.crafting.JsonContext;
import net.minecraftforge.oredict.OreIngredient;

public class OreDictIngredientCircuitElite implements IIngredientFactory {

    @Override
    public Ingredient parse(JsonContext context, JsonObject json) {
        return new OreIngredient("circuitEliteTG");
    }

}
