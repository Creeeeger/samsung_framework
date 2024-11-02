.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

.field public final synthetic val$valFloat:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->val$valFloat:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "auto_brightness_transition_time"

    .line 12
    .line 13
    const/4 v2, -0x2

    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 21
    .line 22
    iget v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    .line 23
    .line 24
    iget p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->val$valFloat:F

    .line 25
    .line 26
    invoke-virtual {v1, v0, p0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
