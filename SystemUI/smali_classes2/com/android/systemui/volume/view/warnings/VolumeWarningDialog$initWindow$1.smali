.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0715ba

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f0715b9

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const v3, 0x7f070968

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    mul-int/lit8 v0, v0, 0x2

    .line 51
    .line 52
    sub-int/2addr v3, v0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v4, -0x2

    .line 60
    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sub-int/2addr v1, v2

    .line 80
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
