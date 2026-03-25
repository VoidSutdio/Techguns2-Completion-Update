package techguns.items.tools;

import net.minecraft.client.util.ITooltipFlag;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.item.ItemStack;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.IBlockAccess;
import net.minecraft.world.World;
import org.jetbrains.annotations.NotNull;
import org.lwjgl.input.Keyboard;
import techguns.util.ItemUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Set;

public class TGCrowbar extends TGPickaxe {

    protected HashMap<String, Integer> harvestLevels = new HashMap<>();

    public TGCrowbar(ToolMaterial mat, String name) {
        super(mat, name);
        harvestLevels.put("default", mat.getHarvestLevel());
        harvestLevels.put("pickaxe", mat.getHarvestLevel());
        harvestLevels.put("wrench", mat.getHarvestLevel());
    }

    @Override
    public @NotNull Set<String> getToolClasses(@NotNull ItemStack stack) {
        return harvestLevels.keySet();
    }

    @Override
    public void addInformation(@NotNull ItemStack stack, World worldIn, @NotNull List<String> tooltip, @NotNull ITooltipFlag flagIn) {
        super.addInformation(stack, worldIn, tooltip, flagIn);

        if (Keyboard.isKeyDown(Keyboard.KEY_LSHIFT) || Keyboard.isKeyDown(Keyboard.KEY_RSHIFT)) {
            ItemUtil.addToolClassesTooltip(harvestLevels, tooltip);
            //tooltip.add(TextUtil.trans("techguns.tooltip.crowbar.destroycluster"));
        } else {
            ItemUtil.addShiftExpandedTooltip(tooltip);
        }
    }

    @Override
    public boolean doesSneakBypassUse(@NotNull ItemStack stack, @NotNull IBlockAccess world, @NotNull BlockPos pos, @NotNull EntityPlayer player) {
        return true;
    }


}
