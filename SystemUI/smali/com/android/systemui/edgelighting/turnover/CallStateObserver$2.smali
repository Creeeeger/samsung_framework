.class public final Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;
.super Landroid/telephony/PhoneStateListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mHandler:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 18
    .line 19
    iput p1, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
