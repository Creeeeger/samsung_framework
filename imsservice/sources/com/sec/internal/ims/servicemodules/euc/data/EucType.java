package com.sec.internal.ims.servicemodules.euc.data;

import com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId;
import com.sec.internal.constants.ims.servicemodules.im.ReverseEnumMap;

/* loaded from: classes.dex */
public enum EucType implements IEnumerationWithId<EucType> {
    PERSISTENT(0),
    VOLATILE(1),
    NOTIFICATION(2),
    ACKNOWLEDGEMENT(3),
    EULA(4);

    private static final ReverseEnumMap<EucType> map = new ReverseEnumMap<>(EucType.class);
    private final int id;

    EucType(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public EucType getFromId(int i) {
        return (EucType) map.get(Integer.valueOf(i));
    }
}
