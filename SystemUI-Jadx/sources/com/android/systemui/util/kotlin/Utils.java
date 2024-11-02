package com.android.systemui.util.kotlin;

import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Utils {
    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Quad toQuad(Object obj, Triple triple) {
            return new Quad(obj, triple.getFirst(), triple.getSecond(), triple.getThird());
        }

        public static Triple toTriple(Object obj, Pair pair) {
            return new Triple(obj, pair.getFirst(), pair.getSecond());
        }
    }
}
