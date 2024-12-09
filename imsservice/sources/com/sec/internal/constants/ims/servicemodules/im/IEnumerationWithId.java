package com.sec.internal.constants.ims.servicemodules.im;

import java.lang.Enum;

/* loaded from: classes.dex */
public interface IEnumerationWithId<T extends Enum<T>> {
    T getFromId(int i);

    int getId();
}
