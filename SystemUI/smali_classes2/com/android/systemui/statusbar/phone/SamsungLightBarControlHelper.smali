.class public final Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public navigationBarModel:Lcom/android/systemui/statusbar/phone/NavigationBarModel;

.field public statusBarModel:Lcom/android/systemui/statusbar/phone/StatusBarModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Lcom/android/systemui/statusbar/phone/StatusBarModel;

    .line 3
    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v8, 0x0

    .line 6
    const/16 v9, 0x60

    .line 7
    .line 8
    const/4 v10, 0x0

    .line 9
    move-object v1, v11

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move/from16 v5, p4

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBarModel;-><init>(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->statusBarModel:Lcom/android/systemui/statusbar/phone/StatusBarModel;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :cond_0
    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->statusBarModel:Lcom/android/systemui/statusbar/phone/StatusBarModel;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v1, "updateStatusBar "

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "SamsungLightBarControlHelper"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
