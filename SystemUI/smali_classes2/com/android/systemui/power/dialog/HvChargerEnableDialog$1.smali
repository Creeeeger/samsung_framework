.class public final Lcom/android/systemui/power/dialog/HvChargerEnableDialog$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/dialog/HvChargerEnableDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/dialog/HvChargerEnableDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/dialog/HvChargerEnableDialog$1;->this$0:Lcom/android/systemui/power/dialog/HvChargerEnableDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/dialog/HvChargerEnableDialog$1;->this$0:Lcom/android/systemui/power/dialog/HvChargerEnableDialog;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, -0x2

    .line 11
    const-string v0, "adaptive_fast_charging"

    .line 12
    .line 13
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
