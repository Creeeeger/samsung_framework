.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
