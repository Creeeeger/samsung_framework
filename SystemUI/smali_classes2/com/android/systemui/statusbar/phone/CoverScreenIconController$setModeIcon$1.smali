.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $icon:Lcom/android/internal/statusbar/StatusBarIcon;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->$icon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->$icon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->$icon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 35
    .line 36
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Landroid/graphics/Canvas;

    .line 41
    .line 42
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 65
    .line 66
    const/16 v3, 0x64

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const-string v3, "Set mode icon "

    .line 80
    .line 81
    const-string/jumbo v4, "x"

    .line 82
    .line 83
    .line 84
    const-string v5, "CoverScreenIconController"

    .line 85
    .line 86
    invoke-static {v3, v2, v4, v1, v5}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 92
    .line 93
    new-instance v2, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;

    .line 94
    .line 95
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;-><init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;Ljava/io/ByteArrayOutputStream;)V

    .line 96
    .line 97
    .line 98
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
