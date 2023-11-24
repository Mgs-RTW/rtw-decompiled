.class Lcom/netease/lotr/Launcher$CopyFile;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CopyFile"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40000


# instance fields
.field private m_buffer:[B

.field private m_copied_size:J

.field private m_copying_file:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher;)V
    .locals 2

    .line 1121
    iput-object p1, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1123
    iput-wide v0, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    const/4 p1, 0x0

    .line 1124
    iput-object p1, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    const/high16 p1, 0x40000

    .line 1126
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_buffer:[B

    return-void
.end method

.method private copyAsset(Ljava/lang/String;J)V
    .locals 9

    .line 1138
    iget-object v0, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1139
    iget-wide v1, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    .line 1142
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1143
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v4}, Lcom/netease/lotr/Launcher;->access$900(Lcom/netease/lotr/Launcher;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1146
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1147
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1149
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1151
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1153
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1155
    :goto_0
    iget-object v3, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 1157
    iget-object v5, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1158
    iget-wide v5, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    goto :goto_0

    .line 1160
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1161
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1162
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-long/2addr v1, p2

    .line 1167
    iput-wide v1, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    const-string p2, "NeoXDevice"

    .line 1168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to copy asset file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private copyInitPng()V
    .locals 10

    .line 1173
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$900(Lcom/netease/lotr/Launcher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logo.bm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1176
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 1177
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1178
    iget-object v3, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v3}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v4}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v4

    const-string v5, "logo"

    invoke-static {v4, v5}, Lcom/netease/lotr/Launcher;->access$400(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1181
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1182
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1183
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    .line 1184
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    .line 1186
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1188
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 1189
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 1190
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 1191
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 1192
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 1193
    invoke-static {v7, v6, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 1194
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    iget-object v4, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v4}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v4

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1198
    iget-object v2, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1199
    iget-object v2, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v2

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1200
    iget-object v2, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v2

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1204
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1205
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1206
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1207
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1208
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1215
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1216
    throw v0

    .line 1215
    :catch_0
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCopiedSize()J
    .locals 2

    .line 1130
    iget-wide v0, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    return-wide v0
.end method

.method public getCopyingFile()Ljava/lang/String;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1221
    iput-wide v0, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copied_size:J

    const/4 v2, 0x0

    .line 1222
    iput-object v2, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 1223
    iget-object v2, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->access$1000(Lcom/netease/lotr/Launcher;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1225
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/lotr/Launcher$AssetInfo;

    iget-object v4, v4, Lcom/netease/lotr/Launcher$AssetInfo;->Path:Ljava/lang/String;

    iput-object v4, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 1226
    iget-object v4, p0, Lcom/netease/lotr/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/lotr/Launcher$AssetInfo;

    iget-wide v5, v3, Lcom/netease/lotr/Launcher$AssetInfo;->Size:J

    invoke-direct {p0, v4, v5, v6}, Lcom/netease/lotr/Launcher$CopyFile;->copyAsset(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v2, "filelist.txt"

    .line 1229
    invoke-direct {p0, v2, v0, v1}, Lcom/netease/lotr/Launcher$CopyFile;->copyAsset(Ljava/lang/String;J)V

    .line 1230
    invoke-direct {p0}, Lcom/netease/lotr/Launcher$CopyFile;->copyInitPng()V

    .line 1231
    iget-object v0, p0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    new-instance v1, Lcom/netease/lotr/Launcher$CopyFile$1;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Launcher$CopyFile$1;-><init>(Lcom/netease/lotr/Launcher$CopyFile;)V

    invoke-virtual {v0, v1}, Lcom/netease/lotr/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
