.class Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)V

    return-void
.end method

.method private checkStack(Ljava/lang/Throwable;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v0, v2, :cond_2

    .line 12
    .line 13
    aget-object v4, v1, v0

    .line 14
    .line 15
    iget-object v5, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 16
    .line 17
    invoke-static {v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmPluginMap(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v6, v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->checkAndDisable(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    or-int/2addr v3, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    or-int/2addr p0, v3

    .line 63
    return p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .line 1
    const-string p1, "plugin.debugging"

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->getFirstUncaughtExceptionTime(Landroid/content/Context;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p1, v2, v4

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    sub-long v7, v0, v2

    .line 33
    .line 34
    const-wide/32 v9, 0x2bf20

    .line 35
    .line 36
    .line 37
    cmp-long p1, v7, v9

    .line 38
    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->getUncaughtExceptionCount(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr p1, v6

    .line 54
    const/4 v7, 0x5

    .line 55
    if-lt p1, v7, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v7, "UncaughtException - currentTime = "

    .line 62
    .line 63
    const-string v8, "   firstExceptionTime = "

    .line 64
    .line 65
    invoke-static {v7, v0, v1, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    sget-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmPluginMap(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disableAll(Ljava/util/ArrayList;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1, p2}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1, v4, v5}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 139
    .line 140
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string p1, "all_splugin_disabled"

    .line 149
    .line 150
    invoke-static {p0, p1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 155
    .line 156
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1, v6}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 174
    .line 175
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p0, v0, v1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-void
.end method
