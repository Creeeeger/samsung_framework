package com.android.systemui.dump;

import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ParsedArgs {
    public String command;
    public String dumpPriority;
    public boolean listOnly;
    public final List nonFlagArgs;
    public boolean proto;
    public final String[] rawArgs;
    public int tailLength;

    public ParsedArgs(String[] strArr, List<String> list) {
        this.rawArgs = strArr;
        this.nonFlagArgs = list;
    }
}
