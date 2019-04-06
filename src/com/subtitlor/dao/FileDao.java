package com.subtitlor.dao;

import com.subtitlor.bean.File;
import java.util.List;

public interface FileDao {
    void ajouter( File file );
    List<File> lister();
}
