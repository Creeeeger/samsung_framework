package com.sec.internal.constants.ims.servicemodules.im;

/* loaded from: classes.dex */
public enum RoutingType implements IEnumerationWithId<RoutingType> {
    NONE(0),
    SENT(1),
    RECEIVED(2);

    private static final ReverseEnumMap<RoutingType> map = new ReverseEnumMap<>(RoutingType.class);
    private final int id;

    RoutingType(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public RoutingType getFromId(int i) {
        return (RoutingType) map.get(Integer.valueOf(i));
    }
}
