.class public final Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEFAULT_PACKAGES:[Ljava/lang/String;

.field public static final DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

.field public static final DUAL_DISPLAY_PACKAGES_FOLDER:[Ljava/lang/String;


# instance fields
.field public final mCategoryMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.samsung.android.dynamiclock:2"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DEFAULT_PACKAGES:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "com.samsung.android.dynamiclock"

    .line 10
    .line 11
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES_FOLDER:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static isEnable(I)Z
    .locals 4

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    rem-int/lit8 v0, p0, 0xa

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "isEnable() value:"

    .line 11
    .line 12
    const-string v2, ", ret:"

    .line 13
    .line 14
    const-string v3, "PluginLockInstancePolicy"

    .line 15
    .line 16
    invoke-static {v1, p0, v2, v0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v0
.end method

.method public static isSameInstance(II)Z
    .locals 4

    .line 1
    div-int/lit8 v0, p0, 0xa

    .line 2
    .line 3
    div-int/lit8 v1, p1, 0xa

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "isSameInstance() submitNum:"

    .line 11
    .line 12
    const-string v2, ", matchedNum:"

    .line 13
    .line 14
    const-string v3, ", ret:"

    .line 15
    .line 16
    invoke-static {v1, p0, v2, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "PluginLockInstancePolicy"

    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v0
.end method


# virtual methods
.method public final isDefaultInstance(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    .line 2
    .line 3
    div-int/lit8 v0, p1, 0xa

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0xa

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x1

    .line 26
    and-int/2addr p0, v0

    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    const-string p0, "isDefaultInstance() allowedNumber:"

    .line 32
    .line 33
    const-string v1, ", ret:"

    .line 34
    .line 35
    const-string v2, "PluginLockInstancePolicy"

    .line 36
    .line 37
    invoke-static {p0, p1, v1, v0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v0
.end method
