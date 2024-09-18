package com.samsung.android.service.ProtectedATCommand.list;

import android.content.Context;

/* loaded from: classes5.dex */
public class CPCommand extends ICmdList {
    private Context mContext;

    public CPCommand(Context context) {
        try {
            this.cmdType = 162;
            addATCommands();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.samsung.android.service.ProtectedATCommand.list.ICmdList
    protected void addATCommands() {
    }
}
