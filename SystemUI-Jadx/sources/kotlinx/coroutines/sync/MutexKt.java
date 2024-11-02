package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class MutexKt {
    public static final Empty EMPTY_LOCKED;
    public static final Empty EMPTY_UNLOCKED;
    public static final Symbol LOCKED;
    public static final Symbol UNLOCKED;
    public static final Symbol UNLOCK_FAIL;

    static {
        new Symbol("LOCK_FAIL");
        UNLOCK_FAIL = new Symbol("UNLOCK_FAIL");
        Symbol symbol = new Symbol("LOCKED");
        LOCKED = symbol;
        Symbol symbol2 = new Symbol("UNLOCKED");
        UNLOCKED = symbol2;
        EMPTY_LOCKED = new Empty(symbol);
        EMPTY_UNLOCKED = new Empty(symbol2);
    }
}
