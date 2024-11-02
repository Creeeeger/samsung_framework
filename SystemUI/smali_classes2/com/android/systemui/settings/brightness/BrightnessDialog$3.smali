.class public final Lcom/android/systemui/settings/brightness/BrightnessDialog$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep(I)V
    .locals 1

    .line 1
    sget p1, Lcom/android/systemui/settings/brightness/BrightnessDialog;->$r8$clinit:I

    .line 2
    .line 3
    const-string p1, "BrightnessDialog"

    .line 4
    .line 5
    const-string v0, "onStartedGoingToSleep"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
