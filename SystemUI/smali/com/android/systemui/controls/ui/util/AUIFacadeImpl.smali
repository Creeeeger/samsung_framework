.class public final Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/AUIFacade;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final soundIdMap:Ljava/util/Map;

.field public soundPool:Landroid/media/SoundPool;

.field public final soundResources:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 9
    .line 10
    const p2, 0x7f120024

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lkotlin/Pair;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 23
    .line 24
    const p2, 0x7f120025

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v1, Lkotlin/Pair;

    .line 32
    .line 33
    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 37
    .line 38
    const p2, 0x7f12002e

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v2, Lkotlin/Pair;

    .line 46
    .line 47
    invoke-direct {v2, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 51
    .line 52
    const p2, 0x7f12002f

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance v3, Lkotlin/Pair;

    .line 60
    .line 61
    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 65
    .line 66
    const/high16 p2, 0x7f120000

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    new-instance v4, Lkotlin/Pair;

    .line 73
    .line 74
    invoke-direct {v4, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 78
    .line 79
    const p2, 0x7f120001

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-instance v5, Lkotlin/Pair;

    .line 87
    .line 88
    invoke-direct {v5, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 92
    .line 93
    const p2, 0x7f120032

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    new-instance v6, Lkotlin/Pair;

    .line 101
    .line 102
    invoke-direct {v6, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 106
    .line 107
    const p2, 0x7f120033

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    new-instance v7, Lkotlin/Pair;

    .line 115
    .line 116
    invoke-direct {v7, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    filled-new-array/range {v0 .. v7}, [Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundResources:Ljava/util/List;

    .line 128
    .line 129
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    .line 17
    .line 18
    return-void
.end method

.method public final initialize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/media/SoundPool$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->values()[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v1, v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "stv_touch_tone"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 27
    .line 28
    .line 29
    const/16 v2, 0xd

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundResources:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lkotlin/Pair;

    .line 66
    .line 67
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/4 v4, 0x1

    .line 78
    iget-object v5, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->context:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0, v5, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object v4, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    .line 89
    .line 90
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;-><init>(Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    return-void
.end method

.method public final playClick(IILandroid/view/View;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    if-eq p1, v7, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq p1, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq p1, v3, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-eq p1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 24
    .line 25
    move-object v3, v1

    .line 26
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 36
    .line 37
    move-object v3, v1

    .line 38
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 48
    .line 49
    move-object v3, v1

    .line 50
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 60
    .line 61
    move-object v3, v1

    .line 62
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 69
    .line 70
    :goto_0
    if-nez v2, :cond_4

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "getSoundId(): can\'t find customSound:"

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v2, "AUIFacadeImpl"

    .line 87
    .line 88
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_4
    if-nez v2, :cond_8

    .line 97
    .line 98
    const/16 p1, 0xd

    .line 99
    .line 100
    if-ne p2, p1, :cond_6

    .line 101
    .line 102
    if-eqz p4, :cond_5

    .line 103
    .line 104
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 108
    .line 109
    :goto_1
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Ljava/lang/Integer;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    if-eqz p4, :cond_7

    .line 119
    .line 120
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 124
    .line 125
    :goto_2
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/Integer;

    .line 132
    .line 133
    :goto_3
    move-object v2, p1

    .line 134
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    :cond_8
    if-eqz v2, :cond_9

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const/4 p1, 0x0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    .line 144
    .line 145
    invoke-virtual {p0, v7, p1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    const/high16 v6, 0x3f800000    # 1.0f

    .line 152
    .line 153
    move v2, v3

    .line 154
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-virtual {p3, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 162
    .line 163
    .line 164
    return-void
.end method
