package com.sec.internal.helper;

import android.os.Message;

/* loaded from: classes.dex */
public class State implements IState {
    @Override // com.sec.internal.helper.IState
    public void enter() {
    }

    @Override // com.sec.internal.helper.IState
    public void exit() {
    }

    @Override // com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        return false;
    }

    protected State() {
    }

    @Override // com.sec.internal.helper.IState
    public String getName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(36) + 1);
    }
}
