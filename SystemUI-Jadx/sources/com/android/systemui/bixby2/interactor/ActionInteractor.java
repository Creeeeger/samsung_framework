package com.android.systemui.bixby2.interactor;

import com.samsung.android.sdk.command.Command;
import com.samsung.android.sdk.command.action.CommandAction;
import com.samsung.android.sdk.command.provider.ICommandActionCallback;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ActionInteractor {
    List<String> getSupportingActions();

    Command loadStatefulCommandInteractor(String str, Command command);

    default Command loadStatefulCommandInteractor(String str, Command command, CommandAction commandAction) {
        return null;
    }

    void performCommandActionInteractor(String str, CommandAction commandAction, ICommandActionCallback iCommandActionCallback);
}
