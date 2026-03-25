package techguns.client.render;

import net.minecraft.item.Item;
import net.minecraft.item.ItemStack;

import java.util.HashMap;

public class AdditionalSlotRenderRegistry {
    protected static final HashMap<Item, RenderAdditionalSlotItem> registry = new HashMap<>();

    public static void register(Item item, RenderAdditionalSlotItem render) {
        registry.put(item, render);
    }

    public static RenderAdditionalSlotItem getRenderForItem(ItemStack stack) {
        return registry.get(stack.getItem());
    }
}
