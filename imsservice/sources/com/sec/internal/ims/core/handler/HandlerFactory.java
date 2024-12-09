package com.sec.internal.ims.core.handler;

import android.content.Context;
import android.os.Looper;
import com.sec.internal.ims.core.handler.secims.ResipHandlerFactory;
import com.sec.internal.ims.core.handler.secims.StackIF;
import com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface;
import com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface;
import com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface;
import com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.handler.IHandlerFactory;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;

/* loaded from: classes.dex */
public abstract class HandlerFactory implements IHandlerFactory {
    protected static VolteHandler mAndroidVolteHandler;
    protected static CmcHandler mCmcHandler;
    protected static EucHandler mEucHandler;
    protected static ImHandler mImHandler;
    protected static IshHandler mIshHandler;
    protected static MediaHandler mMediaHandler;
    protected static MiscHandler mMiscHandler;
    protected static OptionsHandler mOptionsHandler;
    protected static PresenceHandler mPresenceHandler;
    protected static RawSipHandler mRawSipHandler;
    protected static RegistrationHandler mRegistrationHandler;
    protected static SlmHandler mSlmHandler;
    protected static SmsHandler mSmsHandler;
    protected static VolteHandler mVolteHandler;
    protected static VshHandler mVshHandler;
    private static HandlerFactory sHandlerInstance;

    public static HandlerFactory createStackHandler(Looper looper, Context context, IImsFramework iImsFramework) {
        StackIF.getInstance().setImsFramework(iImsFramework);
        ResipHandlerFactory resipHandlerFactory = new ResipHandlerFactory(looper, context, iImsFramework);
        sHandlerInstance = resipHandlerFactory;
        return resipHandlerFactory;
    }

    public HandlerFactory(Looper looper) {
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        mRegistrationHandler.init();
        mVolteHandler.init();
        mAndroidVolteHandler.init();
        MediaHandler mediaHandler = mMediaHandler;
        if (mediaHandler != null) {
            mediaHandler.init();
        }
        mEucHandler.init();
        mImHandler.init();
        IshHandler ishHandler = mIshHandler;
        if (ishHandler != null) {
            ishHandler.init();
        }
        mOptionsHandler.init();
        mPresenceHandler.init();
        mSmsHandler.init();
        mSlmHandler.init();
        VshHandler vshHandler = mVshHandler;
        if (vshHandler != null) {
            vshHandler.init();
        }
        mMiscHandler.init();
        mRawSipHandler.init();
        CmcHandler cmcHandler = mCmcHandler;
        if (cmcHandler != null) {
            cmcHandler.init();
        }
        StackIF.getInstance().initMediaJni(mMediaHandler);
        StackIF.getInstance().initCmcJni(mCmcHandler);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public VolteHandler getVolteStackAdaptor() {
        return mVolteHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public MediaHandler getMediaHandler() {
        return mMediaHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public EucHandler getEucHandler() {
        return mEucHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public IImServiceInterface getImHandler() {
        return mImHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public IIshServiceInterface getIshHandler() {
        return mIshHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public IOptionsServiceInterface getOptionsHandler() {
        return mOptionsHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public IPresenceStackInterface getPresenceHandler() {
        return mPresenceHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public SmsHandler getSmsHandler() {
        return mSmsHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public IvshServiceInterface getVshHandler() {
        return mVshHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public ISlmServiceInterface getSlmHandler() {
        return mSlmHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public RawSipHandler getRawSipHandler() {
        return mRawSipHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public MiscHandler getMiscHandler() {
        return mMiscHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IHandlerFactory
    public CmcHandler getCmcHandler() {
        return mCmcHandler;
    }
}
