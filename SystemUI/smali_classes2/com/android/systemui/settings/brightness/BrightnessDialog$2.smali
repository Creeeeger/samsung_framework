.class public final Lcom/android/systemui/settings/brightness/BrightnessDialog$2;
.super Landroid/os/CountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
