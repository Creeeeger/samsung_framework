.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "[DS]Task"


# instance fields
.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public thumbnail:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 3
    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 7
    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorPrimary:I

    .line 8
    iput p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorBackground:I

    .line 9
    iput-object p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 10
    iput-boolean p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isDockable:Z

    .line 11
    iput-boolean p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isLocked:Z

    .line 12
    iput-object p7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;)V
    .locals 8

    .line 4
    iget-object v1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    iget v2, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorPrimary:I

    iget v3, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorBackground:I

    iget-boolean v4, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isDockable:Z

    iget-boolean v5, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isLocked:Z

    iget-object v6, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v7, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isDockable:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, " dockable=N"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isLocked:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string p1, " locked=Y"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string p1, " "

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->title:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "] "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->title:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
