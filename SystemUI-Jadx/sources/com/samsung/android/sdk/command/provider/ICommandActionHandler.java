package com.samsung.android.sdk.command.provider;

import com.samsung.android.sdk.command.Command;
import com.samsung.android.sdk.command.action.CommandAction;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ICommandActionHandler {
    List createStatelessCommands();

    Command loadStatefulCommand(String str);

    Command loadStatefulCommand(String str, CommandAction commandAction);

    CommandAction migrateCommandAction(String str, CommandAction commandAction);

    void performCommandAction(String str, CommandAction commandAction, ICommandActionCallback iCommandActionCallback);
}
