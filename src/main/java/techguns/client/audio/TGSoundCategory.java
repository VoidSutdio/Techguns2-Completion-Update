package techguns.client.audio;

import java.util.ArrayList;

import net.minecraft.util.SoundCategory;

public class TGSoundCategory {

    protected static ArrayList<TGSoundCategory> CATEGORIES;

    public static final TGSoundCategory GUN_FIRE = new TGSoundCategory("gunfire", SoundCategory.PLAYERS);
    public static final TGSoundCategory PLAYER_EFFECT = new TGSoundCategory("playereffect", SoundCategory.PLAYERS);
    public static final TGSoundCategory RELOAD = new TGSoundCategory("reload", SoundCategory.PLAYERS);
    public static final TGSoundCategory EXPLOISON = new TGSoundCategory("explosion", SoundCategory.MASTER);
    public static final TGSoundCategory MACHINE = new TGSoundCategory("machine", SoundCategory.BLOCKS);
    public static final TGSoundCategory DEATHEFFECT = new TGSoundCategory("deathFX", SoundCategory.HOSTILE);
    public static final TGSoundCategory HOSTILE = new TGSoundCategory("hostile", SoundCategory.HOSTILE);

    protected int id;
    protected String name;
    protected SoundCategory vanillaCategory;

    public TGSoundCategory(String name, SoundCategory vanillaCategory) {
        super();
        if (CATEGORIES == null) {
            CATEGORIES = new ArrayList<>();
        }

        this.id = CATEGORIES.size();
        this.name = name;
        this.vanillaCategory = vanillaCategory;
        CATEGORIES.add(this);
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public SoundCategory getVanillaCategory() {
        return vanillaCategory;
    }

    public static TGSoundCategory get(int index) {
        if (index < CATEGORIES.size()) {
            return CATEGORIES.get(index);
        }
        return null;
    }

}
