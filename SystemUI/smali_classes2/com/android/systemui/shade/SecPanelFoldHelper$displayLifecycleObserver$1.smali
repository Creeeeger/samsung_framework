.class public final Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public isFolderOpened:I

.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->isFolderOpened:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "onFolderStateChanged newFolderOpenState = "

    .line 2
    .line 3
    const-string v1, ", isFolderOpened = "

    .line 4
    .line 5
    const-string v2, "SecPanelFoldHelper"

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->isFolderOpened:I

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->isFolderOpened:I

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const-string p1, "FOLD_UNKNOWN"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p1, "FOLD_OPEN"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p1, "FOLD_CLOSE"

    .line 29
    .line 30
    :goto_0
    sget v0, Lcom/android/systemui/shade/SecPanelFoldHelper;->$r8$clinit:I

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "onFolderStateChanged("

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ") in KeyguardShowing:null, QsExpanded:"

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ", PanelExpanded:null, Tracking:null"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-void
.end method
