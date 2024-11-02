.class public abstract Lcom/android/systemui/util/SystemUIDialogUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSystemUIDialogUtils(ILandroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/qp/SubscreenQsPanelDialog;

    .line 8
    .line 9
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelDialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 14
    .line 15
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
