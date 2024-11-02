.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final mUserManager:Landroid/os/UserManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "user"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/os/UserManager;

    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public hasUserRestriction(I)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    const-string v0, "no_share_location"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isSecondaryOrGuestUser(I)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "android.os.usertype.full.SECONDARY"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method
