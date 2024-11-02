package kotlinx.coroutines.selects;

import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class SelectKt {
    public static final Symbol NOT_SELECTED = new Symbol("NOT_SELECTED");
    public static final Symbol ALREADY_SELECTED = new Symbol("ALREADY_SELECTED");
    public static final Symbol UNDECIDED = new Symbol("UNDECIDED");
    public static final Symbol RESUMED = new Symbol("RESUMED");
    public static final SeqNumber selectOpSequenceNumber = new SeqNumber();
}
