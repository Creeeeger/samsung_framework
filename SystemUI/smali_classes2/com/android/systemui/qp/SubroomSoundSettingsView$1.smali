.class public final Lcom/android/systemui/qp/SubroomSoundSettingsView$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    .line 14
    .line 15
    iget-object p2, p1, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 22
    .line 23
    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 27
    .line 28
    :cond_0
    sget-object p2, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput p2, p1, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    .line 38
    .line 39
    iget p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(IZ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
