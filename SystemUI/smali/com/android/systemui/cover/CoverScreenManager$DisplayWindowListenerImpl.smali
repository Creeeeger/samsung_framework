.class public final Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method
