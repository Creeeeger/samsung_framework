package com.sec.internal.constants.ims.servicemodules.im;

/* loaded from: classes.dex */
public enum SlmMode implements IEnumerationWithId<SlmMode> {
    UNKOWN(0),
    PAGER(1),
    LARGE_MESSAGE(2);

    private static final ReverseEnumMap<SlmMode> map = new ReverseEnumMap<>(SlmMode.class);
    private final int id;

    SlmMode(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public SlmMode getFromId(int i) {
        return (SlmMode) map.get(Integer.valueOf(i));
    }

    public static SlmMode fromId(int i) {
        return (SlmMode) map.get(Integer.valueOf(i));
    }
}
