package com.sec.internal.ims.servicemodules.euc.data;

import com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId;
import com.sec.internal.constants.ims.servicemodules.im.ReverseEnumMap;

/* loaded from: classes.dex */
public enum EucState implements IEnumerationWithId<EucState> {
    ACCEPTED(0),
    REJECTED(1),
    ACCEPTED_NOT_SENT(2),
    REJECTED_NOT_SENT(3),
    DISMISSED(4),
    TIMED_OUT(5),
    FAILED(6),
    NONE(7);

    private static final ReverseEnumMap<EucState> map = new ReverseEnumMap<>(EucState.class);
    private final int id;

    EucState(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public EucState getFromId(int i) {
        return (EucState) map.get(Integer.valueOf(i));
    }
}
