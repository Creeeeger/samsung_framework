.class public final Lcom/android/systemui/edgelighting/turnover/CallStateObserver;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mHandler:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

.field public final mPhoneStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

.field public mState:I

.field public mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;-><init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mHandler:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;-><init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    .line 20
    .line 21
    const-string/jumbo v1, "phone"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 31
    .line 32
    const/16 p0, 0x20

    .line 33
    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
