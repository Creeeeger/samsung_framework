package com.sec.internal.constants.ims.servicemodules.im;

/* loaded from: classes.dex */
public enum ChatMode implements IEnumerationWithId<ChatMode> {
    OFF(0),
    ON(1),
    LINK(2);

    private static final ReverseEnumMap<ChatMode> map = new ReverseEnumMap<>(ChatMode.class);
    private final int id;

    ChatMode(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public ChatMode getFromId(int i) {
        return (ChatMode) map.get(Integer.valueOf(i));
    }

    public static ChatMode fromId(int i) {
        return (ChatMode) map.get(Integer.valueOf(i));
    }
}
