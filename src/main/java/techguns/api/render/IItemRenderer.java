package techguns.api.render;

import net.minecraft.client.renderer.block.model.ItemCameraTransforms;
import net.minecraft.entity.EntityLivingBase;
import net.minecraft.item.ItemStack;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public interface IItemRenderer {
    void renderItem(@Nonnull ItemCameraTransforms.TransformType transform, @Nonnull ItemStack stack, @Nullable EntityLivingBase elb, boolean leftHanded);
}
