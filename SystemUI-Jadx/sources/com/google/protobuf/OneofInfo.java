package com.google.protobuf;

import java.lang.reflect.Field;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OneofInfo {
    public final Field caseField;
    public final Field valueField;

    public OneofInfo(int i, Field field, Field field2) {
        this.caseField = field;
        this.valueField = field2;
    }
}
