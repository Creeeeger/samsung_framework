.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $btn:Landroid/widget/ImageView;

.field public final synthetic $toAlpha:F


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$btn:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$toAlpha:F

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$btn:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$toAlpha:F

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
