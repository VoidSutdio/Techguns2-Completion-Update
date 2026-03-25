package net.voidstudio.techguns;

import net.minecraft.entity.EntityLivingBase;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.util.DamageSource;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.entity.living.LivingAttackEvent;
import net.minecraftforge.event.world.BlockEvent;

public class Interactions {
    public static boolean cantBreak(EntityPlayer player, World world, BlockPos pos) {
        return MinecraftForge.EVENT_BUS.post(new BlockEvent.BreakEvent(world, pos, world.getBlockState(pos), player));
    }

    public static boolean cantAttack(EntityLivingBase target, EntityPlayer src) {
        return MinecraftForge.EVENT_BUS.post(new LivingAttackEvent(target, DamageSource.causePlayerDamage(src), 0));
    }
}
