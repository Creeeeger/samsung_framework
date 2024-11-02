package com.android.settingslib.media;

import android.media.MediaRoute2Info;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class InfoMediaManager$Api34Impl$$ExternalSyntheticLambda1 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((MediaRoute2Info) obj).isSystemRoute();
    }
}
