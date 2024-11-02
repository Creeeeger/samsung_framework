.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;->collator:Ljava/text/Collator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/edgelighting/data/AppInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/systemui/edgelighting/data/AppInfo;

    .line 4
    .line 5
    :try_start_0
    iget v0, p1, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    .line 6
    .line 7
    iget v1, p2, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;->collator:Ljava/text/Collator;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sub-int p0, v1, v0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "Failed to compare AppInfo. "

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "EdgeLightingSettingManager"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :goto_0
    return p0
.end method
