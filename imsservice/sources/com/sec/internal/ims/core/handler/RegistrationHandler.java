package com.sec.internal.ims.core.handler;

import android.os.Looper;
import com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface;

/* loaded from: classes.dex */
public abstract class RegistrationHandler extends BaseHandler implements IRegistrationInterface {
    protected RegistrationHandler(Looper looper) {
        super(looper);
    }
}
