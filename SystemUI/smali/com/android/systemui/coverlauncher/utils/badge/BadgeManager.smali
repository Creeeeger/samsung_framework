.class public final Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;


# instance fields
.field public final mItems:Ljava/util/HashMap;


# direct methods
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
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final addItem(Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "add item, key : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", item : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "CoverLauncher_BadgeManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method
