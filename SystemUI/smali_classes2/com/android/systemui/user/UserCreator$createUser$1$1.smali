.class public final Lcom/android/systemui/user/UserCreator$createUser$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $errorCallback:Ljava/lang/Runnable;

.field public final synthetic $successCallback:Ljava/util/function/Consumer;

.field public final synthetic $user:Landroid/content/pm/UserInfo;

.field public final synthetic $userCreationProgressDialog:Landroid/app/Dialog;

.field public final synthetic $userIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/systemui/user/UserCreator;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/UserCreator;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            "Landroid/app/Dialog;",
            "Ljava/lang/Runnable;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/android/systemui/user/UserCreator;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$errorCallback:Ljava/lang/Runnable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$successCallback:Ljava/util/function/Consumer;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$errorCallback:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/systemui/user/UserCreator;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    .line 35
    .line 36
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    .line 57
    .line 58
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 59
    .line 60
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/user/UserCreator;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    new-instance v2, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    .line 73
    .line 74
    invoke-direct {v2, v3, v0, v4}, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/UserCreator;Landroid/content/pm/UserInfo;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$successCallback:Ljava/util/function/Consumer;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    .line 88
    .line 89
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
